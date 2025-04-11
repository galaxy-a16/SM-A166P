.class public final synthetic Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

.field public final synthetic f$1:D

.field public final synthetic f$2:D

.field public final synthetic f$3:D


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;DDD)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    iput-wide p2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;->f$1:D

    iput-wide p4, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;->f$2:D

    iput-wide p6, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;->f$3:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    iget-wide v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;->f$1:D

    iget-wide v3, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;->f$2:D

    iget-wide v5, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;->f$3:D

    invoke-static/range {v0 .. v6}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->$r8$lambda$pEyWU4nyU1Ua4tczJW8UPgv8XyI(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;DDD)V

    return-void
.end method
