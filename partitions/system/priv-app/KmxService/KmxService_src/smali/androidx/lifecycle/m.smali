.class public final synthetic Landroidx/lifecycle/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/m0;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/channels/y;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/m;->a:Lkotlinx/coroutines/channels/y;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/m;->a:Lkotlinx/coroutines/channels/y;

    invoke-static {p0, p1}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->a(Lkotlinx/coroutines/channels/y;Ljava/lang/Object;)V

    return-void
.end method
