.class public Lcyanogenmod/weather/IWeatherServiceProviderChangeListener$NoOp;
.super Ljava/lang/Object;
.source "IWeatherServiceProviderChangeListener.java"

# interfaces
.implements Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWeatherServiceProviderChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "providerLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    return-void
.end method
