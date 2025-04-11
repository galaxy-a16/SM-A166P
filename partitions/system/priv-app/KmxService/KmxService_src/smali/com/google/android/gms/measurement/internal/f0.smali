.class public final synthetic Lcom/google/android/gms/measurement/internal/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/l2;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/measurement/internal/f0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/f0;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/f0;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/f0;->a:Lcom/google/android/gms/measurement/internal/f0;

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

    sget-object p0, Lcom/google/android/gms/internal/measurement/m7;->b:Lcom/google/android/gms/internal/measurement/m7;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m7;->a()Lcom/google/android/gms/internal/measurement/n7;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/o7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/measurement/o7;->c:Lcom/google/android/gms/internal/measurement/m3;

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
