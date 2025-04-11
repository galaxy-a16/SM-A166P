.class final Lkotlinx/serialization/PolymorphicSerializer$descriptor$2;
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
.field final synthetic this$0:Lkotlinx/serialization/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/e;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/e;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2;->this$0:Lkotlinx/serialization/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2;->invoke()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlinx/serialization/descriptors/g;
    .locals 4

    sget-object v0, Lkotlinx/serialization/descriptors/c;->a:Lkotlinx/serialization/descriptors/c;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/descriptors/g;

    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2$1;

    iget-object v3, p0, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2;->this$0:Lkotlinx/serialization/e;

    invoke-direct {v2, v3}, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2$1;-><init>(Lkotlinx/serialization/e;)V

    const-string v3, "kotlinx.serialization.Polymorphic"

    invoke-static {v3, v0, v1, v2}, Lkotlinx/serialization/descriptors/k;->b(Ljava/lang/String;Lkotlinx/serialization/descriptors/n;[Lkotlinx/serialization/descriptors/g;Lvb/b;)Lkotlinx/serialization/descriptors/h;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2;->this$0:Lkotlinx/serialization/e;

    .line 2
    iget-object p0, p0, Lkotlinx/serialization/e;->a:Lkotlin/reflect/c;

    const-string v1, "context"

    .line 3
    invoke-static {p0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlinx/serialization/descriptors/b;

    invoke-direct {v1, v0, p0}, Lkotlinx/serialization/descriptors/b;-><init>(Lkotlinx/serialization/descriptors/h;Lkotlin/reflect/c;)V

    return-object v1
.end method
