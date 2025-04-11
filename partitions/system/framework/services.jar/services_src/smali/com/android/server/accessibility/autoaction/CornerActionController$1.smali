.class public Lcom/android/server/accessibility/autoaction/CornerActionController$1;
.super Landroid/database/ContentObserver;
.source "CornerActionController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionController;Landroid/os/Handler;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->-$$Nest$msetCornerAction(Lcom/android/server/accessibility/autoaction/CornerActionController;)V

    return-void
.end method
