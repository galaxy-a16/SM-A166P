.class final Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/a;


# instance fields
.field final synthetic this$0:Landroidx/activity/result/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/e;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/activity/result/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/e;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/activity/result/d;
    .locals 0

    .line 1
    new-instance p0, Landroidx/activity/result/d;

    invoke-direct {p0}, Landroidx/activity/result/d;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2;->invoke()Landroidx/activity/result/d;

    move-result-object p0

    return-object p0
.end method
