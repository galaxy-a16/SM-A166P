.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Landroid/content/pm/UserInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$1:Landroid/content/pm/UserInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/am/UserController;

    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$1:Landroid/content/pm/UserInfo;

    invoke-static {v0, p0}, Lcom/android/server/am/UserController;->$r8$lambda$ab0G2Q5LOxbYYTaYAvBmyKFVbAE(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    return-void
.end method
