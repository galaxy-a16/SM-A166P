.class public final synthetic Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/GentleUpdateHelper;

.field public final synthetic f$1:Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/GentleUpdateHelper;Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/GentleUpdateHelper;

    iput-object p2, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/GentleUpdateHelper;

    iget-object p0, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/GentleUpdateHelper;->$r8$lambda$pSIrJ4iDp1o0E4FLVVvXamkjSMY(Lcom/android/server/pm/GentleUpdateHelper;Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;Ljava/lang/Boolean;)V

    return-void
.end method
