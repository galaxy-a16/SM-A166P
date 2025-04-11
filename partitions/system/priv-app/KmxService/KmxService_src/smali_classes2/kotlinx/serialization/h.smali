.class public abstract Lkotlinx/serialization/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/serialization/internal/r;

.field public static final b:Lkotlinx/serialization/internal/r;

.field public static final c:Lkotlinx/serialization/internal/s;

.field public static final d:Lkotlinx/serialization/internal/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;

    sget-boolean v1, Lkotlinx/serialization/internal/m;->a:Z

    const-string v1, "factory"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v2, Lkotlinx/serialization/internal/m;->a:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lkotlinx/serialization/internal/r;

    if-eqz v2, :cond_0

    invoke-direct {v5, v0, v3}, Lkotlinx/serialization/internal/r;-><init>(Lvb/b;I)V

    goto :goto_0

    :cond_0
    invoke-direct {v5, v0, v4}, Lkotlinx/serialization/internal/r;-><init>(Lvb/b;I)V

    :goto_0
    sput-object v5, Lkotlinx/serialization/h;->a:Lkotlinx/serialization/internal/r;

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lkotlinx/serialization/internal/r;

    if-eqz v2, :cond_1

    invoke-direct {v5, v0, v3}, Lkotlinx/serialization/internal/r;-><init>(Lvb/b;I)V

    goto :goto_1

    :cond_1
    invoke-direct {v5, v0, v4}, Lkotlinx/serialization/internal/r;-><init>(Lvb/b;I)V

    :goto_1
    sput-object v5, Lkotlinx/serialization/h;->b:Lkotlinx/serialization/internal/r;

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE$1;

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lkotlinx/serialization/internal/s;

    if-eqz v2, :cond_2

    invoke-direct {v5, v0, v3}, Lkotlinx/serialization/internal/s;-><init>(Lvb/c;I)V

    goto :goto_2

    :cond_2
    invoke-direct {v5, v0, v4}, Lkotlinx/serialization/internal/s;-><init>(Lvb/c;I)V

    :goto_2
    sput-object v5, Lkotlinx/serialization/h;->c:Lkotlinx/serialization/internal/s;

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlinx/serialization/internal/s;

    if-eqz v2, :cond_3

    invoke-direct {v1, v0, v3}, Lkotlinx/serialization/internal/s;-><init>(Lvb/c;I)V

    goto :goto_3

    :cond_3
    invoke-direct {v1, v0, v4}, Lkotlinx/serialization/internal/s;-><init>(Lvb/c;I)V

    :goto_3
    sput-object v1, Lkotlinx/serialization/h;->d:Lkotlinx/serialization/internal/s;

    return-void
.end method
