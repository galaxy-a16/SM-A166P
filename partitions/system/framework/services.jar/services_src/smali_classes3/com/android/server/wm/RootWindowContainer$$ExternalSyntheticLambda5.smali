.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:Lcom/android/server/wm/TaskDisplayArea;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/content/Intent;

.field public final synthetic f$5:Landroid/content/pm/ActivityInfo;

.field public final synthetic f$6:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/TaskDisplayArea;ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/TaskDisplayArea;

    iput p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$4:Landroid/content/Intent;

    iput-object p6, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$5:Landroid/content/pm/ActivityInfo;

    iput-object p7, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$6:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/TaskDisplayArea;

    iget v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$2:I

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$4:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$5:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$6:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v7, p1

    check-cast v7, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$BRtk5fWPS0ozhQ3WBRYwLaU25os(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/TaskDisplayArea;ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method
