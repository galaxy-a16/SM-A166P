.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/power/PowerGroup;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;ILcom/android/server/power/PowerGroup;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/PowerManagerService;

    iput p2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/power/PowerGroup;

    iput p4, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/PowerManagerService;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$1:I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/power/PowerGroup;

    iget p0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/power/PowerManagerService;->$r8$lambda$KTzl9nD1hgwo1DSsuaGZJ7YmvPc(Lcom/android/server/power/PowerManagerService;ILcom/android/server/power/PowerGroup;I)V

    return-void
.end method
