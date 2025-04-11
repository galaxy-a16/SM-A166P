.class public final Lcom/google/firebase/FirebaseCommonKtxRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "La5/c;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x4

    new-array p0, p0, [La5/c;

    new-instance v0, La5/r;

    const-class v1, Lz4/a;

    const-class v2, Lkotlinx/coroutines/t;

    invoke-direct {v0, v1, v2}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, La5/c;->a(La5/r;)La5/b;

    move-result-object v0

    new-instance v3, La5/r;

    const-class v4, Ljava/util/concurrent/Executor;

    invoke-direct {v3, v1, v4}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v1, La5/l;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v1, v3, v5, v6}, La5/l;-><init>(La5/r;II)V

    invoke-virtual {v0, v1}, La5/b;->a(La5/l;)V

    sget-object v1, Lv4/h;->b:Lv4/h;

    iput-object v1, v0, La5/b;->g:Ljava/lang/Object;

    invoke-virtual {v0}, La5/b;->b()La5/c;

    move-result-object v0

    aput-object v0, p0, v6

    new-instance v0, La5/r;

    const-class v1, Lz4/c;

    invoke-direct {v0, v1, v2}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, La5/c;->a(La5/r;)La5/b;

    move-result-object v0

    new-instance v3, La5/r;

    invoke-direct {v3, v1, v4}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v1, La5/l;

    invoke-direct {v1, v3, v5, v6}, La5/l;-><init>(La5/r;II)V

    invoke-virtual {v0, v1}, La5/b;->a(La5/l;)V

    sget-object v1, Lv4/h;->c:Lv4/h;

    iput-object v1, v0, La5/b;->g:Ljava/lang/Object;

    invoke-virtual {v0}, La5/b;->b()La5/c;

    move-result-object v0

    aput-object v0, p0, v5

    new-instance v0, La5/r;

    const-class v1, Lz4/b;

    invoke-direct {v0, v1, v2}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, La5/c;->a(La5/r;)La5/b;

    move-result-object v0

    new-instance v3, La5/r;

    invoke-direct {v3, v1, v4}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v1, La5/l;

    invoke-direct {v1, v3, v5, v6}, La5/l;-><init>(La5/r;II)V

    invoke-virtual {v0, v1}, La5/b;->a(La5/l;)V

    sget-object v1, Lv4/h;->d:Lv4/h;

    iput-object v1, v0, La5/b;->g:Ljava/lang/Object;

    invoke-virtual {v0}, La5/b;->b()La5/c;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    new-instance v0, La5/r;

    const-class v1, Lz4/d;

    invoke-direct {v0, v1, v2}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, La5/c;->a(La5/r;)La5/b;

    move-result-object v0

    new-instance v2, La5/r;

    invoke-direct {v2, v1, v4}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v1, La5/l;

    invoke-direct {v1, v2, v5, v6}, La5/l;-><init>(La5/r;II)V

    invoke-virtual {v0, v1}, La5/b;->a(La5/l;)V

    sget-object v1, Lv4/h;->e:Lv4/h;

    iput-object v1, v0, La5/b;->g:Ljava/lang/Object;

    invoke-virtual {v0}, La5/b;->b()La5/c;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    invoke-static {p0}, Ll9/b;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
