.class final Landroidx/activity/OnBackPressedDispatcher$3;
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
.field final synthetic this$0:Landroidx/activity/y;


# direct methods
.method public constructor <init>(Landroidx/activity/y;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$3;->this$0:Landroidx/activity/y;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$3;->invoke()V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$3;->this$0:Landroidx/activity/y;

    invoke-virtual {p0}, Landroidx/activity/y;->c()V

    return-void
.end method
