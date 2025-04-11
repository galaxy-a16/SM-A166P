.class public final synthetic Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    check-cast p1, Landroid/companion/IOnTransportsChangedListener;

    invoke-static {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->$r8$lambda$ljjpMQNvXL4Ur1hXZdfFORKaFwc(Ljava/util/List;Landroid/companion/IOnTransportsChangedListener;)V

    return-void
.end method
