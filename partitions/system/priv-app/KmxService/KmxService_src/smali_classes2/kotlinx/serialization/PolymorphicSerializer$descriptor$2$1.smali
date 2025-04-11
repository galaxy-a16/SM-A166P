.class final Lkotlinx/serialization/PolymorphicSerializer$descriptor$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/PolymorphicSerializer$descriptor$2;->invoke()Lkotlinx/serialization/descriptors/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/b;"
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

    iput-object p1, p0, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2$1;->this$0:Lkotlinx/serialization/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/serialization/descriptors/a;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2$1;->invoke(Lkotlinx/serialization/descriptors/a;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke(Lkotlinx/serialization/descriptors/a;)V
    .locals 3

    const-string v0, "$this$buildSerialDescriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    .line 2
    sget-object v1, Lkotlinx/serialization/internal/m1;->b:Lkotlinx/serialization/internal/e1;

    .line 3
    invoke-static {p1, v0, v1}, Lkotlinx/serialization/descriptors/a;->a(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/g;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kotlinx.serialization.Polymorphic<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2$1;->this$0:Lkotlinx/serialization/e;

    .line 4
    iget-object v1, v1, Lkotlinx/serialization/e;->a:Lkotlin/reflect/c;

    .line 5
    check-cast v1, Lkotlin/jvm/internal/j;

    invoke-virtual {v1}, Lkotlin/jvm/internal/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/descriptors/l;->a:Lkotlinx/serialization/descriptors/l;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlinx/serialization/descriptors/g;

    invoke-static {v0, v1, v2}, Lkotlinx/serialization/descriptors/k;->c(Ljava/lang/String;Lkotlinx/serialization/descriptors/n;[Lkotlinx/serialization/descriptors/g;)Lkotlinx/serialization/descriptors/h;

    move-result-object v0

    const-string v1, "value"

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/descriptors/a;->a(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/g;)V

    iget-object p0, p0, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2$1;->this$0:Lkotlinx/serialization/e;

    .line 6
    iget-object p0, p0, Lkotlinx/serialization/e;->b:Lkotlin/collections/EmptyList;

    const-string v0, "<set-?>"

    .line 7
    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Lkotlinx/serialization/descriptors/a;->a:Ljava/util/List;

    return-void
.end method
