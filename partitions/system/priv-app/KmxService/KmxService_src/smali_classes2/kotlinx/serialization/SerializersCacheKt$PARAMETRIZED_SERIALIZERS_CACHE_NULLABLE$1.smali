.class final Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/c;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;

    invoke-direct {v0}, Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;-><init>()V

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/reflect/c;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;->invoke(Lkotlin/reflect/c;Ljava/util/List;)Lkotlinx/serialization/c;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/reflect/c;Ljava/util/List;)Lkotlinx/serialization/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/c;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/v;",
            ">;)",
            "Lkotlinx/serialization/c;"
        }
    .end annotation

    const-string p0, "clazz"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "types"

    invoke-static {p2, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lkotlinx/serialization/modules/c;->a:Lkotlinx/serialization/modules/b;

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p2, v0}, Lv9/a;->a0(Lkotlinx/serialization/modules/b;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Li4/f;->g(Ljava/lang/Object;)V

    invoke-static {p1, p2, p0}, Lv9/a;->U(Lkotlin/reflect/c;Ljava/util/List;Ljava/util/ArrayList;)Lkotlinx/serialization/c;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lp9/d;->M(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
