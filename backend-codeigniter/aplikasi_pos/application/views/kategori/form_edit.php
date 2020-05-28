    <div class="row">
        <div class="col-md-12">
            <h2 class="page-header">
                Mozarella Malang <small> Kategori</small>
            </h2>
        </div>
    </div> 
<?php
echo form_open('kategori/edit');
?>

<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">

            <div class="panel-body">
                <div class="table-responsive">
                    <!-- contennya -->
                    <input type="hidden" value="<?php echo $record['kategori_id']?>" name="id">
                    <table class="table table-bordered">
                        <tr><td width="130">Nama Kategori</td>
                            <td><div class="col-sm-4"><input type="text" name="kategori" placeholder="kategori" class="form-control"
                                    value="<?php echo $record['nama_kategori']?>"></div>
                        </td></tr>
                        <tr><td colspan="2"><button type="submit" class="btn btn-primary btn-sm" name="submit">Simpan</button> 
                            <?php echo anchor('kategori','Kembali',array('class'=>'btn btn-primary btn-sm'))?></td></tr>
                    </table>
                    </form>
                    <!-- contentnya -->
                </div>
            </div>

        </div>
    </div>
</div>