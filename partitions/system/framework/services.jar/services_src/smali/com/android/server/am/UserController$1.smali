.class public Lcom/android/server/am/UserController$1;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/UserController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/android/server/am/UserController$1;->this$0:Lcom/android/server/am/UserController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/android/server/am/UserController$1;->this$0:Lcom/android/server/am/UserController;

    invoke-static {p0, p1}, Lcom/android/server/am/UserController;->-$$Nest$monUserAdded(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method public onUserRemoved(Landroid/content/pm/UserInfo;)V
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/android/server/am/UserController$1;->this$0:Lcom/android/server/am/UserController;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->onUserRemoved(I)V

    return-void
.end method
