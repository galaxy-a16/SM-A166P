.class public final Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;
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
.field public static final INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/a1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/a1;

    const-string v2, "com.samsung.android.kmxservice.common.update.StubResponseVo.ServerResponseVo"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/a1;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/f0;I)V

    const-string v0, "appId"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/a1;->k(Ljava/lang/String;Z)V

    const-string v0, "resultCode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/a1;->k(Ljava/lang/String;Z)V

    const-string v0, "resultMsg"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/a1;->k(Ljava/lang/String;Z)V

    const-string v0, "versionCode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/a1;->k(Ljava/lang/String;Z)V

    const-string v0, "versionName"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/a1;->k(Ljava/lang/String;Z)V

    const-string v0, "contentSize"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/a1;->k(Ljava/lang/String;Z)V

    const-string v0, "productId"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/a1;->k(Ljava/lang/String;Z)V

    const-string v0, "productName"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/a1;->k(Ljava/lang/String;Z)V

    const-string v0, "serverType"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/a1;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;->descriptor:Lkotlinx/serialization/internal/a1;

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

    const/16 p0, 0x9

    new-array p0, p0, [Lkotlinx/serialization/c;

    sget-object v0, Lkotlinx/serialization/internal/m1;->a:Lkotlinx/serialization/internal/m1;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const/16 v1, 0x8

    aput-object v0, p0, v1

    return-object p0
.end method

.method public deserialize(Lzb/c;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v1

    invoke-interface {v0, v1}, Lzb/c;->a(Lkotlinx/serialization/descriptors/g;)Lzb/a;

    move-result-object v0

    invoke-interface {v0}, Lzb/a;->n()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move v4, v2

    :goto_0
    if-eqz v4, :cond_0

    invoke-interface {v0, v1}, Lzb/a;->m(Lkotlinx/serialization/descriptors/g;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v5}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    const/16 v5, 0x8

    invoke-interface {v0, v1, v5}, Lzb/a;->h(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object v5

    or-int/lit16 v6, v6, 0x100

    move-object v15, v5

    goto :goto_0

    :pswitch_1
    const/4 v5, 0x7

    invoke-interface {v0, v1, v5}, Lzb/a;->h(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object v5

    or-int/lit16 v6, v6, 0x80

    move-object v14, v5

    goto :goto_0

    :pswitch_2
    const/4 v5, 0x6

    invoke-interface {v0, v1, v5}, Lzb/a;->h(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object v5

    or-int/lit8 v6, v6, 0x40

    move-object v13, v5

    goto :goto_0

    :pswitch_3
    const/4 v5, 0x5

    invoke-interface {v0, v1, v5}, Lzb/a;->h(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object v5

    or-int/lit8 v6, v6, 0x20

    move-object v12, v5

    goto :goto_0

    :pswitch_4
    const/4 v5, 0x4

    invoke-interface {v0, v1, v5}, Lzb/a;->h(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object v5

    or-int/lit8 v6, v6, 0x10

    move-object v11, v5

    goto :goto_0

    :pswitch_5
    const/4 v5, 0x3

    invoke-interface {v0, v1, v5}, Lzb/a;->h(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object v5

    or-int/lit8 v6, v6, 0x8

    move-object v10, v5

    goto :goto_0

    :pswitch_6
    const/4 v5, 0x2

    invoke-interface {v0, v1, v5}, Lzb/a;->h(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object v5

    or-int/lit8 v6, v6, 0x4

    move-object v9, v5

    goto :goto_0

    :pswitch_7
    invoke-interface {v0, v1, v2}, Lzb/a;->h(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object v8

    or-int/lit8 v6, v6, 0x2

    goto :goto_0

    :pswitch_8
    invoke-interface {v0, v1, v3}, Lzb/a;->h(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object v7

    or-int/lit8 v6, v6, 0x1

    goto :goto_0

    :pswitch_9
    move v4, v3

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lzb/a;->b(Lkotlinx/serialization/descriptors/g;)V

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    const/16 v16, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/i1;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lzb/c;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;->deserialize(Lzb/c;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    sget-object p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;->descriptor:Lkotlinx/serialization/internal/a1;

    return-object p0
.end method

.method public serialize(Lzb/d;Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;)V
    .locals 1

    .line 1
    const-string v0, "encoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-interface {p1, p0}, Lzb/d;->a(Lkotlinx/serialization/descriptors/g;)Lzb/b;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;->write$Self(Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;Lzb/b;Lkotlinx/serialization/descriptors/g;)V

    invoke-interface {p1, p0}, Lzb/b;->b(Lkotlinx/serialization/descriptors/g;)V

    return-void
.end method

.method public bridge synthetic serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo$$serializer;->serialize(Lzb/d;Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;)V

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
