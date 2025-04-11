.class public Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;
.super Landroid/content/BroadcastReceiver;
.source "CornerActionSelectPopup.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->-$$Nest$fgetmPopup(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)Landroid/widget/PopupMenu;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->-$$Nest$fgetmPopup(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)Landroid/widget/PopupMenu;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method
