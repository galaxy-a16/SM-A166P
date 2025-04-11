.class public Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;
.super Ljava/lang/Object;
.source "AutoActionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/AutoActionController;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->-$$Nest$fgetmIsPauseAutoClick(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x10401ea

    goto :goto_0

    :cond_0
    const p0, 0x10401eb

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
