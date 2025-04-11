.class final Lkotlinx/serialization/internal/EnumSerializer$descriptor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/a;"
    }
.end annotation


# instance fields
.field final synthetic $serialName:Ljava/lang/String;

.field final synthetic this$0:Lkotlinx/serialization/internal/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/b0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/internal/b0;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/internal/b0;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/internal/EnumSerializer$descriptor$2;->this$0:Lkotlinx/serialization/internal/b0;

    iput-object p2, p0, Lkotlinx/serialization/internal/EnumSerializer$descriptor$2;->$serialName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/EnumSerializer$descriptor$2;->invoke()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlinx/serialization/descriptors/g;
    .locals 5

    iget-object v0, p0, Lkotlinx/serialization/internal/EnumSerializer$descriptor$2;->this$0:Lkotlinx/serialization/internal/b0;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lkotlinx/serialization/internal/EnumSerializer$descriptor$2;->this$0:Lkotlinx/serialization/internal/b0;

    iget-object p0, p0, Lkotlinx/serialization/internal/EnumSerializer$descriptor$2;->$serialName:Ljava/lang/String;

    .line 4
    new-instance v1, Lkotlinx/serialization/internal/a0;

    .line 5
    iget-object v0, v0, Lkotlinx/serialization/internal/b0;->a:[Ljava/lang/Enum;

    .line 6
    array-length v2, v0

    invoke-direct {v1, p0, v2}, Lkotlinx/serialization/internal/a0;-><init>(Ljava/lang/String;I)V

    array-length p0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v1, v4, v2}, Lkotlinx/serialization/internal/a1;->k(Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
