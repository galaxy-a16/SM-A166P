.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ServiceRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ServiceRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ServiceRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ServiceRecord;

    invoke-static {p0}, Lcom/android/server/am/ActiveServices;->$r8$lambda$ZHyuPccUrID3-qkiK-noOUK-NgY(Lcom/android/server/am/ServiceRecord;)V

    return-void
.end method
