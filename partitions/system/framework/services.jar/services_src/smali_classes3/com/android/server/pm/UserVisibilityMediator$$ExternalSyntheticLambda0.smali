.class public final synthetic Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;

    iput p2, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;

    iget v1, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/UserVisibilityMediator;->$r8$lambda$xF3yf_Y2Cd4R3UzJEI93Fd5p2nM(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;IZ)V

    return-void
.end method
