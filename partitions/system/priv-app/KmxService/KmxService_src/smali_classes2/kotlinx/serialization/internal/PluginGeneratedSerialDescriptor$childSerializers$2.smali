.class final Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$childSerializers$2;
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
.field final synthetic this$0:Lkotlinx/serialization/internal/a1;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/internal/a1;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$childSerializers$2;->this$0:Lkotlinx/serialization/internal/a1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$childSerializers$2;->invoke()[Lkotlinx/serialization/c;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()[Lkotlinx/serialization/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$childSerializers$2;->this$0:Lkotlinx/serialization/internal/a1;

    .line 2
    iget-object p0, p0, Lkotlinx/serialization/internal/a1;->b:Lkotlinx/serialization/internal/f0;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lkotlinx/serialization/internal/f0;->childSerializers()[Lkotlinx/serialization/c;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lva/n;->e:[Lkotlinx/serialization/c;

    :cond_1
    return-object p0
.end method
