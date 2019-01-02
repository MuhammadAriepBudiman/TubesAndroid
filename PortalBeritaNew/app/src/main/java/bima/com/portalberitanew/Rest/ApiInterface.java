package bima.com.portalberitanew.Rest;

import java.util.List;

import bima.com.portalberitanew.Model.Artikel;
import bima.com.portalberitanew.Model.GetArtikel;
import bima.com.portalberitanew.Model.Komentar;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

public interface ApiInterface {
    @GET("berita")
    Call<GetArtikel> getArtikel();

    @GET("komentar?id_komentar=")
    Call<List<Komentar>> getKomentar(@Query("id_artikel") String id_artikel);

    @FormUrlEncoded
    @POST("komentar")
    Call<ResponseBody> insertKomentar(
            @Field("id_artikel") int id_artikel,
            @Field("komentar") String komentar
    );

    @FormUrlEncoded
    @POST("berita")
    Call<Artikel> insertBerita(
            @Field("judul")String judul,
            @Field("kategori")String kategori,
            @Field("isi")String isi,
            @Field("foto") String foto
    );
}
