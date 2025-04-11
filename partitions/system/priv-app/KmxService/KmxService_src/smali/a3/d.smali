.class public final La3/d;
.super Ld3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La3/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/result/a;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Landroidx/activity/result/a;-><init>(I)V

    sput-object v0, La3/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ld3/a;-><init>()V

    const-string v0, "CLIENT_TELEMETRY"

    iput-object v0, p0, La3/d;->a:Ljava/lang/String;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, La3/d;->c:J

    const/4 v0, -0x1

    iput v0, p0, La3/d;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ld3/a;-><init>()V

    iput-object p1, p0, La3/d;->a:Ljava/lang/String;

    iput p2, p0, La3/d;->b:I

    iput-wide p3, p0, La3/d;->c:J

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 4

    const-wide/16 v0, -0x1

    iget-wide v2, p0, La3/d;->c:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget p0, p0, La3/d;->b:I

    int-to-long v0, p0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, La3/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, La3/d;

    iget-object v0, p0, La3/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v2, p1, La3/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p1, La3/d;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, La3/d;->b()J

    move-result-wide v2

    invoke-virtual {p1}, La3/d;->b()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, La3/d;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0}, La3/d;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lp1/e;

    invoke-direct {v0, p0}, Lp1/e;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, La3/d;->a:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Lp1/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La3/d;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "version"

    invoke-virtual {v0, p0, v1}, Lp1/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lp1/e;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-object v1, p0, La3/d;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget v1, p0, La3/d;->b:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    invoke-virtual {p0}, La3/d;->b()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/annotation/i0;->J(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
