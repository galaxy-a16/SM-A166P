.class public final synthetic Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/app/GameManagerService;

    iput p2, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/app/GameManagerService;

    iget p0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$1:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/server/app/GameManagerService;->$r8$lambda$azJHtNXp_pmiuAMTR1ghF_1YmP4(Lcom/android/server/app/GameManagerService;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method
