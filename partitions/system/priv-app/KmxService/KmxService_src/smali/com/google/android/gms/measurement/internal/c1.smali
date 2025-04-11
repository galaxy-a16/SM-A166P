.class public final synthetic Lcom/google/android/gms/measurement/internal/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/l2;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/measurement/internal/c1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/c1;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/c1;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/c1;->a:Lcom/google/android/gms/measurement/internal/c1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/measurement/internal/o2;->a:Ljava/util/List;

    sget-object p0, Lcom/google/android/gms/internal/measurement/l6;->b:Lcom/google/android/gms/internal/measurement/l6;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/l6;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/q3;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/m6;

    check-cast p0, Lcom/google/android/gms/internal/measurement/n6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/measurement/n6;->a:Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o3;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
