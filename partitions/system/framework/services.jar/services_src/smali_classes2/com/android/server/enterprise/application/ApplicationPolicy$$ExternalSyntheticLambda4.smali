.class public final synthetic Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->$r8$lambda$jCyRqeBuB8tiRBHQdf3q8xc6bnI(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
