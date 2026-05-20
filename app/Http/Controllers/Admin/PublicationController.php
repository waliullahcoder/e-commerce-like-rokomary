<?php

namespace App\Http\Controllers\Admin;

use App\HelperClass;
use App\Models\Publication;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Support\Facades\DB;
class PublicationController extends Controller
{
    public $path;
    public $title;
    public $create_title;
    public $edit_title;
    public $model;
    public function __construct()
    {
        $this->path = 'publication';
        $this->title = 'All Publications';
        $this->create_title = 'Add Publication';
        $this->edit_title = 'Update Publication';
        $this->model = Publication::class;
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return HelperClass::resourceDataView($this->model::orderBy('id', 'desc'), 'image', null, $this->path, $this->title);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate(['name' => 'required']);

      
         try {
            DB::transaction(function () use ($request) {
                // Main Model Create
                $this->model::create([
                    'name' => $request->name,
                    'slug' => HelperClass::generateUniqueSlug($this->model, 'slug', $request->name),
                    'image' => $request->hasFile('image') ? HelperClass::saveImage($request->image, 400, $this->path) : null,
                    'cover_image' => $request->hasFile('cover_image') ? HelperClass::saveImage($request->cover_image, 800, $this->path) : null,
                    'description' => $request->description,
                    'created_by' => Auth::id(),
                ]);

    
                // Category Create
                $category = Category::create([
                    'parent_id' => 19,
                    'type' => "book",
                    'position' => "mega_menu_child",
                    'serial' => 100,
                    'name' => $request->name,
                    'slug' => HelperClass::generateUniqueSlug(Category::class, 'slug', $request->name),
                    'created_by' => Auth::id(),
                ]);

                // SubCategory Create
                SubCategory::create([
                    'parent_id' => 19,
                    'subcategory_id' => $category->id,
                ]);
            });
            return redirect()->route("admin.{$this->path}.index")->withSuccessMessage('Created Successfully!');

        } catch (\Exception $e) {
            return back()->withInput()->withErrors('Something went wrong!');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Request $request, string $id)
    {
        if ($request->has('edit')) {
            $data = $this->model::findOrFail($id);
            return response()->json(['status' => 'success', 'data' => view('admin.publication.partial.edit', ['data' => $data])->render()]);
        }
        return HelperClass::resourceDataEdit($this->model, $id, $this->path, $this->edit_title);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate(['name' => 'required']);

        $data = $this->model::findOrFail($id);
       
        try {
            DB::transaction(function () use ($request,$id) {
                // Main Model Create
                $data = $this->model::findOrFail($id);
                $data->update([
                    'name' => $request->name,
                    'slug' => HelperClass::generateUniqueSlug($this->model, 'slug', $request->name, $id),
                    'image' => $request->hasFile('image') ? HelperClass::saveImage($request->image, 400, $this->path, $data->image) : $data->image,
                    'cover_image' => $request->hasFile('cover_image') ? HelperClass::saveImage($request->cover_image, 800, $this->path, $data->cover_image) : $data->cover_image,
                    'description' => $request->description,
                    'updated_by' => Auth::id(),
                ]);

                $existingCategory = Category::where('name', $data->name)->first();
                if (!$existingCategory) {
                   // Category Create
                $category = Category::create([
                    'parent_id' => 19,
                    'type' => "book",
                    'position' => "mega_menu_child",
                    'serial' => 100,
                    'name' => $request->name,
                    'slug' => HelperClass::generateUniqueSlug(Category::class, 'slug', $request->name),
                    'created_by' => Auth::id(),
                ]);

                // SubCategory Create
                SubCategory::create([
                    'parent_id' => 19,
                    'subcategory_id' => $category->id,
                ]);
                }else{
                    $existingCategory->update([
                        'name' => $request->name,
                    ]);
                }
                
            });
        return redirect()->route("admin.{$this->path}.index")->withSuccessMessage('Updated Successfully!');
        } catch (\Exception $e) {
            return back()->withInput()->withErrors('Something went wrong!');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        return HelperClass::resourceDataDelete($this->model, $id, ['image', 'cover_image']);
    }
}
