.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda45;->f$0:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda45;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda45;->f$0:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda45;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-static {v0, p0, p1}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$QWwwdnhKKl2vTg5eVnc8cyHr0uU(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method
