.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;->f$1:I

    iput p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;->f$1:I

    iget p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/am/UserController;->$r8$lambda$fRRUsL4n2SjWrAtyQDxfiwU1D4E(Lcom/android/server/am/UserController;II)V

    return-void
.end method
