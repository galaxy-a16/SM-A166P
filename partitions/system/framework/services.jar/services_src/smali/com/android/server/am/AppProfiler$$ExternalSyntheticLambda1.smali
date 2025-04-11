.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppProfiler;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:[I

.field public final synthetic f$5:[I

.field public final synthetic f$6:I

.field public final synthetic f$7:J

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler;ZIZ[I[IIJI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppProfiler;

    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$1:Z

    iput p3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$4:[I

    iput-object p6, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$5:[I

    iput p7, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$6:I

    iput-wide p8, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$7:J

    iput p10, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$8:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppProfiler;

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$1:Z

    iget v2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$3:Z

    iget-object v4, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$4:[I

    iget-object v5, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$5:[I

    iget v6, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$6:I

    iget-wide v7, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$7:J

    iget v9, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$8:I

    move-object v10, p1

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    invoke-static/range {v0 .. v10}, Lcom/android/server/am/AppProfiler;->$r8$lambda$0K5QlOIBjT0wJPIIc7LugtJn0MI(Lcom/android/server/am/AppProfiler;ZIZ[I[IIJILcom/android/server/am/ProcessRecord;)V

    return-void
.end method
