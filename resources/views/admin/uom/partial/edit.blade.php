@php
    $route = \Request::route()->getName();
    $updateRoute = str_replace('edit', 'update', $route);
@endphp

<form action="{{ Route($updateRoute, $data->id) }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <!-- Modal -->
    <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="editModalLabel">Update Editor</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                    <label class="form-label">Select Type</label>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="type" id="editor" value="0"
                            {{ old('type', $data->type ?? 0) == 0 ? 'checked' : '' }}>
                        <label class="form-check-label" for="editor">
                            Editor
                        </label>
                    </div>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="type" id="translator" value="1"
                            {{ old('type', $data->type ?? 0) == 1 ? 'checked' : '' }}>
                        <label class="form-check-label" for="translator">
                            Translator
                        </label>
                    </div>
                </div>
                    <div class="row g-3">
                        <div class="col-12">
                            <label for="name" class="form-label">Name: <span class="text-danger">*</span></label>
                            <input type="text" name="name" id="name" class="form-control"
                                value="{{ $data->name }}" required>
                        </div>

                        <div class="col-12">
                            <label for="description" class="form-label">Description:</label>
                            <textarea name="description" cols="17" rows="3" id="description" class="form-control">{{ $data->description }}</textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer p-1">
                    <button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-sm btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
</form>
