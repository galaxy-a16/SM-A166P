.class final Lkotlinx/serialization/internal/PairSerializer$descriptor$1;
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


# instance fields
.field final synthetic $keySerializer:Lkotlinx/serialization/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/c;"
        }
    .end annotation
.end field

.field final synthetic $valueSerializer:Lkotlinx/serialization/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/c;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/c;",
            "Lkotlinx/serialization/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/internal/PairSerializer$descriptor$1;->$keySerializer:Lkotlinx/serialization/c;

    iput-object p2, p0, Lkotlinx/serialization/internal/PairSerializer$descriptor$1;->$valueSerializer:Lkotlinx/serialization/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/serialization/descriptors/a;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/PairSerializer$descriptor$1;->invoke(Lkotlinx/serialization/descriptors/a;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke(Lkotlinx/serialization/descriptors/a;)V
    .locals 2

    .line 2
    const-string v0, "$this$buildClassSerialDescriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/PairSerializer$descriptor$1;->$keySerializer:Lkotlinx/serialization/c;

    invoke-interface {v0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v0

    const-string v1, "first"

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/descriptors/a;->a(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/g;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/PairSerializer$descriptor$1;->$valueSerializer:Lkotlinx/serialization/c;

    invoke-interface {p0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    const-string v0, "second"

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/descriptors/a;->a(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/g;)V

    return-void
.end method
