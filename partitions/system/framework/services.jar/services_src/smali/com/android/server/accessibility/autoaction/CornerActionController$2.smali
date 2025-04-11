.class public Lcom/android/server/accessibility/autoaction/CornerActionController$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "CornerActionController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/CornerActionController;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x10402b0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method
