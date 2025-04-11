.class final Lkotlinx/serialization/SealedClassSerializer$descriptor$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/SealedClassSerializer$descriptor$2;->invoke()Lkotlinx/serialization/descriptors/g;
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
.field final synthetic $subclassSerializers:[Lkotlinx/serialization/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/c;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/serialization/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/f;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/f;[Lkotlinx/serialization/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/f;",
            "[",
            "Lkotlinx/serialization/c;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lkotlinx/serialization/SealedClassSerializer$descriptor$2$1;->$subclassSerializers:[Lkotlinx/serialization/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/serialization/descriptors/a;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/SealedClassSerializer$descriptor$2$1;->invoke(Lkotlinx/serialization/descriptors/a;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke(Lkotlinx/serialization/descriptors/a;)V
    .locals 1

    const-string p0, "$this$buildSerialDescriptor"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    .line 2
    sget-object v0, Lkotlinx/serialization/internal/m1;->b:Lkotlinx/serialization/internal/e1;

    .line 3
    invoke-static {p1, p0, v0}, Lkotlinx/serialization/descriptors/a;->a(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/g;)V

    const/4 p0, 0x0

    throw p0
.end method
