.class public final synthetic Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/AssociationRequestsProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/AssociationRequestsProcessor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/AssociationRequestsProcessor;

    iput p2, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/AssociationRequestsProcessor;

    iget v1, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/companion/AssociationRequestsProcessor;->$r8$lambda$tKgaqFb_N7_a_c8dgQHVDQXYGXs(Lcom/android/server/companion/AssociationRequestsProcessor;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
