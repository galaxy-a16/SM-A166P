.class public final synthetic Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStarter;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStarter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityStarter;

    iput-boolean p2, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityStarter;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/wm/ActivityStarter;->$r8$lambda$PC3e-NDJe92ZDQz43IAbkDazCNc(Lcom/android/server/wm/ActivityStarter;Z)V

    return-void
.end method
