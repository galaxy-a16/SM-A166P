.class public final synthetic Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppErrors;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppErrors;

    iput-object p2, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppErrors;

    iget-object p0, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, p0}, Lcom/android/server/am/AppErrors;->$r8$lambda$sa_7CrqjyXbCCpdHIA0DS4__7Ls(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
