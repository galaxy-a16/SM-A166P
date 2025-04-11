.class public final synthetic Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerServiceExt;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iput p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$3:Z

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->$r8$lambda$QbbO9v7nJfBz_In3rgwifsPr6bM(Lcom/android/server/am/ActivityManagerServiceExt;ILjava/lang/String;ZLcom/android/server/am/ProcessRecord;)V

    return-void
.end method
