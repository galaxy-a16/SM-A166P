.class public final synthetic Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Ljava/lang/Long;

    move-object v6, p2

    check-cast v6, Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->$r8$lambda$GNDCoszRkLVtQQojMJGWDTjGbSI(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    return-void
.end method
