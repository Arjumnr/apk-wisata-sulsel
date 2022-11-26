<div class="modal fade ajaxModal" id="ajaxModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                        <form class="needs-validation" novalidate id="formsKu">
                                <input type="hidden" name="id" id="id">
                                <div class="modal-header">
                                        <h5 class="modal-title" id="title"></h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <i class="ti-close"></i>
                                        </button>
                                </div>
                                <div class="modal-body mb-4">
                                        <div class="form-row">
                                                <div class="col-md-12 mb-12">
                                                        <label for="pertanyaan">Pertanyaan</label>
                                                        <div class="input-group">
                                                               
                                                                <input type="text" class="form-control" name="pertanyaan" id="pertanyaan" placeholder="Pertanyaan" aria-describedby="inputGroupPrepend" required>
                                                                <div class="invalid-feedback">
                                                                        Masukan Pertanyaan'.
                                                                </div>
                                                        </div>
                                                </div>
                                        </div>
                                        

                                </div>
                                <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="submit" id="saveBtn" class="btn btn-primary">Save</button>
                                        <button type="submit" id="updateBtn" class="btn btn-primary">Update</button>
                                </div>
                        </form>
                </div>
        </div>
</div>