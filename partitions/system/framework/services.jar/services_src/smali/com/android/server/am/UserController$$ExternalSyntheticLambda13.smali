.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/am/UserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;ZLcom/android/server/am/UserState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/am/UserController;

    iput-boolean p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;->f$1:Z

    iput-object p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;->f$2:Lcom/android/server/am/UserState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/am/UserController;

    iget-boolean v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;->f$1:Z

    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;->f$2:Lcom/android/server/am/UserState;

    invoke-static {v0, v1, p0}, Lcom/android/server/am/UserController;->$r8$lambda$SuMjhQxLu8VR6ChvS2WamO2tSio(Lcom/android/server/am/UserController;ZLcom/android/server/am/UserState;)V

    return-void
.end method
