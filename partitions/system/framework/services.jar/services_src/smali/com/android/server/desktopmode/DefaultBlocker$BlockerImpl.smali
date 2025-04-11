.class public Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;
.super Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;
.source "DefaultBlocker.java"


# instance fields
.field public reasonCode:I

.field public final synthetic this$0:Lcom/android/server/desktopmode/DefaultBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DefaultBlocker;I)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;-><init>()V

    .line 47
    iput p2, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    return-void
.end method


# virtual methods
.method public onBlocked()Ljava/lang/String;
    .locals 2

    .line 52
    iget v0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 59
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-static {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x1040441

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-static {v0}, Lcom/android/server/desktopmode/DefaultBlocker;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-static {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object p0

    const v1, 0x1040c35

    .line 56
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x1040430

    .line 55
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 54
    :cond_2
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-static {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x1040439

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 53
    :cond_3
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-static {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x104043d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
