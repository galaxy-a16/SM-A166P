.class public abstract Lkotlinx/serialization/modules/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/serialization/modules/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v6, Lkotlinx/serialization/modules/b;

    invoke-static {}, Lkotlin/collections/z;->k0()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/z;->k0()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/z;->k0()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/z;->k0()Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/z;->k0()Ljava/util/Map;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/modules/b;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    sput-object v6, Lkotlinx/serialization/modules/c;->a:Lkotlinx/serialization/modules/b;

    return-void
.end method
