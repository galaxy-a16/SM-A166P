.class public final Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/common/update/StubResponseVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/f0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/a1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/a1;

    const-string v2, "com.samsung.android.kmxservice.common.update.StubResponseVo"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/a1;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/f0;I)V

    const-string v0, "lastCheckTime"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/a1;->k(Ljava/lang/String;Z)V

    const-string v0, "serverData"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/a1;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;->descriptor:Lkotlinx/serialization/internal/a1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [Lkotlinx/serialization/c;

    sget-object v0, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public deserialize(Lzb/c;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo;
    .locals 9

    .line 1
    const-string v0, "decoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-interface {p1, p0}, Lzb/c;->a(Lkotlinx/serialization/descriptors/g;)Lzb/a;

    move-result-object p1

    invoke-interface {p1}, Lzb/a;->n()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move v3, v0

    move v4, v1

    :goto_0
    if-eqz v3, :cond_3

    invoke-interface {p1, p0}, Lzb/a;->m(Lkotlinx/serialization/descriptors/g;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    if-eqz v7, :cond_1

    if-ne v7, v0, :cond_0

    sget-object v7, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;

    invoke-interface {p1, p0, v0, v7, v2}, Lzb/a;->C(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p0, v7}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p0

    :cond_1
    invoke-interface {p1, p0, v1}, Lzb/a;->o(Lkotlinx/serialization/descriptors/g;I)J

    move-result-wide v5

    or-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_0

    :cond_3
    invoke-interface {p1, p0}, Lzb/a;->b(Lkotlinx/serialization/descriptors/g;)V

    new-instance p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;-><init>(IJLcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;Lkotlinx/serialization/internal/i1;)V

    return-object p0
.end method

.method public bridge synthetic deserialize(Lzb/c;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;->deserialize(Lzb/c;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    sget-object p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;->descriptor:Lkotlinx/serialization/internal/a1;

    return-object p0
.end method

.method public serialize(Lzb/d;Lcom/samsung/android/kmxservice/common/update/StubResponseVo;)V
    .locals 1

    .line 1
    const-string v0, "encoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-interface {p1, p0}, Lzb/d;->a(Lkotlinx/serialization/descriptors/g;)Lzb/b;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->write$Self(Lcom/samsung/android/kmxservice/common/update/StubResponseVo;Lzb/b;Lkotlinx/serialization/descriptors/g;)V

    invoke-interface {p1, p0}, Lzb/b;->b(Lkotlinx/serialization/descriptors/g;)V

    return-void
.end method

.method public bridge synthetic serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$$serializer;->serialize(Lzb/d;Lcom/samsung/android/kmxservice/common/update/StubResponseVo;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c;"
        }
    .end annotation

    sget-object p0, Lva/n;->e:[Lkotlinx/serialization/c;

    return-object p0
.end method
