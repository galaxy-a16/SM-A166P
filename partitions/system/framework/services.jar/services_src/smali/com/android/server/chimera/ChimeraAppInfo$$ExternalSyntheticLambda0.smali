.class public final synthetic Lcom/android/server/chimera/ChimeraAppInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/ChimeraAppInfo;

.field public final synthetic f$1:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/ChimeraAppInfo;

    iput-object p2, p0, Lcom/android/server/chimera/ChimeraAppInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/chimera/SystemRepository;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/ChimeraAppInfo;

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/chimera/SystemRepository;

    check-cast p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    invoke-static {v0, p0, p1}, Lcom/android/server/chimera/ChimeraAppInfo;->$r8$lambda$SfmIWxEJbNgmC_KmNpyz7bMIkSc(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z

    move-result p0

    return p0
.end method
