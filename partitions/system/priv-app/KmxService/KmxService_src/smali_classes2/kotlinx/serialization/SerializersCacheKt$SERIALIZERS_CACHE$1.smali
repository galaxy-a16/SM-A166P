.class final Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/b;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;

    invoke-direct {v0}, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;-><init>()V

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/reflect/c;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;->invoke(Lkotlin/reflect/c;)Lkotlinx/serialization/c;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/reflect/c;)Lkotlinx/serialization/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/c;",
            ")",
            "Lkotlinx/serialization/c;"
        }
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Lkotlinx/serialization/c;

    .line 2
    invoke-static {p1, p0}, Li4/g;->h(Lkotlin/reflect/c;[Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lkotlinx/serialization/internal/f1;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/c;

    :cond_0
    return-object p0
.end method
