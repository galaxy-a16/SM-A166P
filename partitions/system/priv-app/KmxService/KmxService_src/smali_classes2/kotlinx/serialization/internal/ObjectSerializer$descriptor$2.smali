.class final Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2;
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

.field final synthetic this$0:Lkotlinx/serialization/internal/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/x0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/internal/x0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/internal/x0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2;->$serialName:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2;->this$0:Lkotlinx/serialization/internal/x0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2;->invoke()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlinx/serialization/descriptors/g;
    .locals 4

    .line 2
    iget-object v0, p0, Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2;->$serialName:Ljava/lang/String;

    sget-object v1, Lkotlinx/serialization/descriptors/o;->d:Lkotlinx/serialization/descriptors/o;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlinx/serialization/descriptors/g;

    new-instance v3, Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2$1;

    iget-object p0, p0, Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2;->this$0:Lkotlinx/serialization/internal/x0;

    invoke-direct {v3, p0}, Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2$1;-><init>(Lkotlinx/serialization/internal/x0;)V

    invoke-static {v0, v1, v2, v3}, Lkotlinx/serialization/descriptors/k;->b(Ljava/lang/String;Lkotlinx/serialization/descriptors/n;[Lkotlinx/serialization/descriptors/g;Lvb/b;)Lkotlinx/serialization/descriptors/h;

    move-result-object p0

    return-object p0
.end method
