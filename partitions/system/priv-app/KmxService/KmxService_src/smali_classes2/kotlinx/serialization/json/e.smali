.class public final Lkotlinx/serialization/json/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/g;


# static fields
.field public static final b:Lkotlinx/serialization/json/e;

.field public static final c:Ljava/lang/String;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/descriptors/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/e;

    invoke-direct {v0}, Lkotlinx/serialization/json/e;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/e;->b:Lkotlinx/serialization/json/e;

    const-string v0, "kotlinx.serialization.json.JsonArray"

    sput-object v0, Lkotlinx/serialization/json/e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlinx/serialization/json/m;->a:Lkotlinx/serialization/json/m;

    new-instance v1, Lkotlinx/serialization/internal/c;

    invoke-interface {v0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/descriptors/g;I)V

    iput-object v1, p0, Lkotlinx/serialization/json/e;->a:Lkotlinx/serialization/descriptors/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/json/e;->a:Lkotlinx/serialization/descriptors/g;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/g;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lkotlinx/serialization/descriptors/n;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/e;->a:Lkotlinx/serialization/descriptors/g;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object p0

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/e;->a:Lkotlinx/serialization/descriptors/g;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->d()I

    move-result p0

    return p0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/e;->a:Lkotlinx/serialization/descriptors/g;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/g;->e(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/e;->a:Lkotlinx/serialization/descriptors/g;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->g()Z

    move-result p0

    return p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/e;->a:Lkotlinx/serialization/descriptors/g;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->getAnnotations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final h(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/e;->a:Lkotlinx/serialization/descriptors/g;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/g;->h(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final i(I)Lkotlinx/serialization/descriptors/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/e;->a:Lkotlinx/serialization/descriptors/g;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    return-object p0
.end method

.method public final isInline()Z
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/e;->a:Lkotlinx/serialization/descriptors/g;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->isInline()Z

    move-result p0

    return p0
.end method

.method public final j(I)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/e;->a:Lkotlinx/serialization/descriptors/g;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/g;->j(I)Z

    move-result p0

    return p0
.end method
