.class final Lkotlinx/serialization/descriptors/SerialDescriptorImpl$_hashCode$2;
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
.field final synthetic this$0:Lkotlinx/serialization/descriptors/h;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/h;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$_hashCode$2;->this$0:Lkotlinx/serialization/descriptors/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 1

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$_hashCode$2;->this$0:Lkotlinx/serialization/descriptors/h;

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/descriptors/h;->k:[Lkotlinx/serialization/descriptors/g;

    .line 2
    invoke-static {p0, v0}, Lv9/a;->v(Lkotlinx/serialization/descriptors/g;[Lkotlinx/serialization/descriptors/g;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$_hashCode$2;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
