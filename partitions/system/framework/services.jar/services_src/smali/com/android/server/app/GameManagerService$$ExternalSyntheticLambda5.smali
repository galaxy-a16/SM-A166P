.class public final synthetic Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/app/GameManagerService;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->$r8$lambda$Cf8wZU7xibf8xuM0UN0GXveQ35g(Lcom/android/server/app/GameManagerService;ILjava/util/List;)I

    move-result p0

    return p0
.end method
