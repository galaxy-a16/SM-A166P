.class public final Lretrofit2/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final errorBody:Lokhttp3/o0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final rawResponse:Lokhttp3/k0;


# direct methods
.method private constructor <init>(Lokhttp3/k0;Ljava/lang/Object;Lokhttp3/o0;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lokhttp3/o0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/k0;",
            "TT;",
            "Lokhttp3/o0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/k0;

    iput-object p2, p0, Lretrofit2/Response;->body:Ljava/lang/Object;

    iput-object p3, p0, Lretrofit2/Response;->errorBody:Lokhttp3/o0;

    return-void
.end method

.method public static error(ILokhttp3/o0;)Lretrofit2/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lokhttp3/o0;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "body == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    new-instance v0, Lokhttp3/j0;

    invoke-direct {v0}, Lokhttp3/j0;-><init>()V

    new-instance v1, Lretrofit2/OkHttpCall$NoContentResponseBody;

    invoke-virtual {p1}, Lokhttp3/o0;->contentType()Lokhttp3/w;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/o0;->contentLength()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lretrofit2/OkHttpCall$NoContentResponseBody;-><init>(Lokhttp3/w;J)V

    .line 1
    iput-object v1, v0, Lokhttp3/j0;->g:Lokhttp3/o0;

    .line 2
    iput p0, v0, Lokhttp3/j0;->c:I

    const-string p0, "Response.error()"

    .line 3
    iput-object p0, v0, Lokhttp3/j0;->d:Ljava/lang/String;

    .line 4
    sget-object p0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {v0, p0}, Lokhttp3/j0;->d(Lokhttp3/Protocol;)V

    new-instance p0, Lokhttp3/d0;

    invoke-direct {p0}, Lokhttp3/d0;-><init>()V

    invoke-virtual {p0}, Lokhttp3/d0;->e()V

    invoke-virtual {p0}, Lokhttp3/d0;->a()Lokhttp3/e0;

    move-result-object p0

    .line 5
    iput-object p0, v0, Lokhttp3/j0;->a:Lokhttp3/e0;

    .line 6
    invoke-virtual {v0}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object p0

    invoke-static {p1, p0}, Lretrofit2/Response;->error(Lokhttp3/o0;Lokhttp3/k0;)Lretrofit2/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "code < 400: "

    .line 7
    invoke-static {v0, p0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static error(Lokhttp3/o0;Lokhttp3/k0;)Lretrofit2/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/o0;",
            "Lokhttp3/k0;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "body == null"

    invoke-static {p0, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rawResponse == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iget v0, p1, Lokhttp3/k0;->d:I

    const/16 v1, 0xc8

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x12b

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 14
    new-instance v0, Lretrofit2/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lretrofit2/Response;-><init>(Lokhttp3/k0;Ljava/lang/Object;Lokhttp3/o0;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse should not be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success(ILjava/lang/Object;)Lretrofit2/Response;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    new-instance v0, Lokhttp3/j0;

    invoke-direct {v0}, Lokhttp3/j0;-><init>()V

    .line 1
    iput p0, v0, Lokhttp3/j0;->c:I

    const-string p0, "Response.success()"

    .line 2
    iput-object p0, v0, Lokhttp3/j0;->d:Ljava/lang/String;

    .line 3
    sget-object p0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {v0, p0}, Lokhttp3/j0;->d(Lokhttp3/Protocol;)V

    new-instance p0, Lokhttp3/d0;

    invoke-direct {p0}, Lokhttp3/d0;-><init>()V

    invoke-virtual {p0}, Lokhttp3/d0;->e()V

    invoke-virtual {p0}, Lokhttp3/d0;->a()Lokhttp3/e0;

    move-result-object p0

    .line 4
    iput-object p0, v0, Lokhttp3/j0;->a:Lokhttp3/e0;

    .line 5
    invoke-virtual {v0}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object p0

    invoke-static {p1, p0}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/k0;)Lretrofit2/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "code < 200 or >= 300: "

    .line 6
    invoke-static {v0, p0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static success(Ljava/lang/Object;)Lretrofit2/Response;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lokhttp3/j0;

    invoke-direct {v0}, Lokhttp3/j0;-><init>()V

    const/16 v1, 0xc8

    .line 12
    iput v1, v0, Lokhttp3/j0;->c:I

    const-string v1, "OK"

    .line 13
    iput-object v1, v0, Lokhttp3/j0;->d:Ljava/lang/String;

    .line 14
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Lokhttp3/j0;->d(Lokhttp3/Protocol;)V

    new-instance v1, Lokhttp3/d0;

    invoke-direct {v1}, Lokhttp3/d0;-><init>()V

    invoke-virtual {v1}, Lokhttp3/d0;->e()V

    invoke-virtual {v1}, Lokhttp3/d0;->a()Lokhttp3/e0;

    move-result-object v1

    .line 15
    iput-object v1, v0, Lokhttp3/j0;->a:Lokhttp3/e0;

    .line 16
    invoke-virtual {v0}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object v0

    invoke-static {p0, v0}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/k0;)Lretrofit2/Response;

    move-result-object p0

    return-object p0
.end method

.method public static success(Ljava/lang/Object;Lokhttp3/k0;)Lretrofit2/Response;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lokhttp3/k0;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "rawResponse == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget v0, p1, Lokhttp3/k0;->d:I

    const/16 v1, 0xc8

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x12b

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 23
    new-instance v0, Lretrofit2/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lretrofit2/Response;-><init>(Lokhttp3/k0;Ljava/lang/Object;Lokhttp3/o0;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse must be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success(Ljava/lang/Object;Lokhttp3/s;)Lretrofit2/Response;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lokhttp3/s;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "headers == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lokhttp3/j0;

    invoke-direct {v0}, Lokhttp3/j0;-><init>()V

    const/16 v1, 0xc8

    .line 17
    iput v1, v0, Lokhttp3/j0;->c:I

    const-string v1, "OK"

    .line 18
    iput-object v1, v0, Lokhttp3/j0;->d:Ljava/lang/String;

    .line 19
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Lokhttp3/j0;->d(Lokhttp3/Protocol;)V

    invoke-virtual {v0, p1}, Lokhttp3/j0;->c(Lokhttp3/s;)V

    new-instance p1, Lokhttp3/d0;

    invoke-direct {p1}, Lokhttp3/d0;-><init>()V

    invoke-virtual {p1}, Lokhttp3/d0;->e()V

    invoke-virtual {p1}, Lokhttp3/d0;->a()Lokhttp3/e0;

    move-result-object p1

    .line 20
    iput-object p1, v0, Lokhttp3/j0;->a:Lokhttp3/e0;

    .line 21
    invoke-virtual {v0}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object p1

    invoke-static {p0, p1}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/k0;)Lretrofit2/Response;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lretrofit2/Response;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public code()I
    .locals 0

    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/k0;

    iget p0, p0, Lokhttp3/k0;->d:I

    return p0
.end method

.method public errorBody()Lokhttp3/o0;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lretrofit2/Response;->errorBody:Lokhttp3/o0;

    return-object p0
.end method

.method public headers()Lokhttp3/s;
    .locals 0

    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/k0;

    iget-object p0, p0, Lokhttp3/k0;->f:Lokhttp3/s;

    return-object p0
.end method

.method public isSuccessful()Z
    .locals 1

    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/k0;

    iget p0, p0, Lokhttp3/k0;->d:I

    const/16 v0, 0xc8

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x12b

    if-lt v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public message()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/k0;

    iget-object p0, p0, Lokhttp3/k0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public raw()Lokhttp3/k0;
    .locals 0

    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/k0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/k0;

    invoke-virtual {p0}, Lokhttp3/k0;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
