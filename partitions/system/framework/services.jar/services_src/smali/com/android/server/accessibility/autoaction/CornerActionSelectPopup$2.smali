.class public Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$2;
.super Ljava/lang/Object;
.source "CornerActionSelectPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->-$$Nest$fgetmPopup(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)Landroid/widget/PopupMenu;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
