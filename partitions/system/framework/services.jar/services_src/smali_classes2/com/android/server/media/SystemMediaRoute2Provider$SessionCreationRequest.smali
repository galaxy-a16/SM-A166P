.class public Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;
.super Ljava/lang/Object;
.source "SystemMediaRoute2Provider.java"


# instance fields
.field public final mRequestId:J

.field public final mRouteId:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRequestId:J

    iput-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRouteId:Ljava/lang/String;

    return-void
.end method
