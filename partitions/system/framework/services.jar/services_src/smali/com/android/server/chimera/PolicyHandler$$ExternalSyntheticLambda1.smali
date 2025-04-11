.class public final synthetic Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/PolicyHandler;

.field public final synthetic f$1:Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/PolicyHandler;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/chimera/PolicyHandler;

    iput-object p2, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/chimera/PolicyHandler;

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    invoke-static {v0, p0}, Lcom/android/server/chimera/PolicyHandler;->$r8$lambda$q05Ky7XV-qvM_oydDcZssuwf8cA(Lcom/android/server/chimera/PolicyHandler;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)V

    return-void
.end method
