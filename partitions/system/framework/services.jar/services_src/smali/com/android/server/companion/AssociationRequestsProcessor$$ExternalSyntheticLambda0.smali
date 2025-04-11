.class public final synthetic Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/AssociationRequestsProcessor;

.field public final synthetic f$1:Landroid/companion/AssociationInfo;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/companion/IAssociationRequestCallback;

.field public final synthetic f$4:Landroid/os/ResultReceiver;

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/AssociationRequestsProcessor;Landroid/companion/AssociationInfo;Ljava/lang/String;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/AssociationRequestsProcessor;

    iput-object p2, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$1:Landroid/companion/AssociationInfo;

    iput-object p3, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$3:Landroid/companion/IAssociationRequestCallback;

    iput-object p5, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$4:Landroid/os/ResultReceiver;

    iput p6, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$5:I

    iput-object p7, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/AssociationRequestsProcessor;

    iget-object v1, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$1:Landroid/companion/AssociationInfo;

    iget-object v2, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$3:Landroid/companion/IAssociationRequestCallback;

    iget-object v4, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$4:Landroid/os/ResultReceiver;

    iget v5, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$5:I

    iget-object v6, p0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    move-object v7, p1

    check-cast v7, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v7}, Lcom/android/server/companion/AssociationRequestsProcessor;->$r8$lambda$XiNRhwKv07Uk-3WIdh3iCluvk8g(Lcom/android/server/companion/AssociationRequestsProcessor;Landroid/companion/AssociationInfo;Ljava/lang/String;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;ILjava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
