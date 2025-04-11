.class public Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$1;
.super Ljava/lang/Object;
.source "ScreenRotation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 108
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
